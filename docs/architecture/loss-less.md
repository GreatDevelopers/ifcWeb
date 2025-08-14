The solution to your problem is to use a tech stack that keeps the **IFC data model as the single source of truth**, performing all editing and saving operations directly on the IFC data itself. This avoids the one-way conversion issue you are concerned about.

Here is a recommended open-source solution stack and workflow:

### Posible Tech Stack

This stack take ifc format as the basis, not just as import, but writing to ifc is impotnt to us.

* **Backend (Data Management & Editing):** **Frappe** a server-side framework with **IfcOpenShell** (a powerful IFC library). This handles all the critical IFC reading, editing, and saving operations.
* **Frontend (User Interface & Viewer):** **Nuxt** a modern JavaScript framework integrated with a specialised client-side viewer based on @thatopen/components.

---

### Workflow

This workflow enables a full round-trip of editing and saving directly to an IFC file:

1.  **IFC File Upload & Storage:**
    * The user uploads an `.ifc` file via the **Nuxt** frontend.
    * The file is sent to **Frappe** backend, which stores it securely on the server.

2.  **Server-Side Processing:**
    * The backend uses **IfcOpenShell** to load and parse the `.ifc` file. The entire IFC data model is now available in memory on the server.
    * Instead of converting it, the server extracts the necessary 3D geometry and property data into a lightweight, temporary format (e.g., JSON or a binary format like BFAST). This data is optimised for fast transmission to the browser.

3.  **Client-Side Viewing & Interaction:**
    * The **Nuxt** frontend receives the lightweight data from the server.
    * Viewer uses this data to render the 3D model in the browser, allowing the user to navigate, select objects, and view properties.

4.  **Client-Side Editing & Data Transmission:**
    * The user makes changes in the browser (e.g., edits a wall's height, moves a window, or changes a property value).
    * The **Nuxt** frontend captures these changes and sends them back to the **Frappe** backend via an API call.

5.  **Server-Side IFC File Update:**
    * The **Frappe** backend receives the changes.
    * Using **IfcOpenShell**, it applies these edits to the original IFC data model that is still being held in memory.
    * Once the edits are applied, **IfcOpenShell** writes a completely new, updated `.ifc` file to the server. This new file incorporates all the user's changes while preserving the rest of the original data model.

This approach ensures that the `.ifc` file itself is the central point of truth, making your application truly open and interoperable.
