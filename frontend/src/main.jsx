import { createRoot } from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import "./index.css";
import { env } from "./config/environment";
import App from "./App.jsx";
import { ClerkProvider } from "@clerk/clerk-react";

// Import your Publishable Key
const VITE_CLERK_PUBLISHABLE_KEY = env.VITE_CLERK_PUBLISHABLE_KEY;

if (!VITE_CLERK_PUBLISHABLE_KEY) {
	throw new Error("Missing Publishable Key");
}

createRoot(document.getElementById("root")).render(
	<ClerkProvider publishableKey={VITE_CLERK_PUBLISHABLE_KEY}>
		<BrowserRouter>
			<App />
		</BrowserRouter>
	</ClerkProvider>
);
