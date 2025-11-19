import React from "react";
import Navbar from "./components/Navbar";
import { Routes, Route, useLocation } from "react-router-dom";
import { Toaster } from "react-hot-toast";
import Home from "./pages/Home";
import Movies from "./pages/Movies";
import MovieDetail from "./pages/MovieDetail";
import SeatLayout from "./pages/SeatLayout";
import MyBooking from "./pages/MyBooking";
import Favorite from "./pages/Favorite";
import Footer from "./components/Footer";
import AddShows from "./pages/admin/AddShows";
import ListShows from "./pages/admin/ListShows";
import ListBookings from "./pages/admin/ListBookings";
import DashBoard from "./pages/admin/DashBoard";
import Layout from "~/pages/admin/Layout";
const App = () => {
	const isAdminRoute = useLocation().pathname.startsWith("/admin");

	return (
		<>
			<Toaster />
			{!isAdminRoute && <Navbar />}
			<Routes>
				<Route path="/" element={<Home />} />
				<Route path="/movies" element={<Movies />} />
				<Route path="/movies/:id" element={<MovieDetail />} />
				<Route path="/movies/:id/:date" element={<SeatLayout />} />
				<Route path="/my-bookings" element={<MyBooking />} />
				<Route path="/favorite" element={<Favorite />} />
				<Route path="/admin/*" element={<Layout />}>
					<Route index element={<DashBoard />} />
					<Route path="add-shows" element={<AddShows />} />
					<Route path="list-shows" element={<ListShows />} />
					<Route path="list-bookings" element={<ListBookings />} />
				</Route>
			</Routes>
			{!isAdminRoute && <Footer />}
		</>
	);
};

export default App;
