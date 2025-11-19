import { ArrowRight, ArrowRightIcon } from "lucide-react";
import React from "react";
import { useNavigate } from "react-router-dom";
import BlurCircle from "./BlurCircle";
import { dummyShowsData } from "../assets/assets";
import MovieCard from "./MovieCard";

const FeatureSection = () => {
	console.log(
		"🚀 ~ FeatureSection ~ dummyShowsData:",
		dummyShowsData.slice(0, 4)
	);

	const navigate = useNavigate();
	return (
		<>
			<div className="px-6 md:px-16 lg:px-24 xl:px-44 overflow-hidden">
				<div className="relative flex justify-between items-center pt-20 pb-10">
					<BlurCircle top="0" right="-80px" />
					<p className="text-xl font-medium text-gray-300">
						Now Showing
					</p>
					<button
						onClick={() => navigate("/movies")}
						className="group flex items-center gap-2 text-sm text-gray-300 cursor-pointer"
					>
						View All
						<ArrowRightIcon className="group-hover:translate-x-0.5 w-4 h-4" />
					</button>
				</div>
				<div className="flex max-sm:justify-center gap-8 mt-8">
					{dummyShowsData.slice(0, 4).map((show) => (
						<MovieCard key={show?._id} movie={show} />
					))}
				</div>
				<div className="mt-20 flex justify-center">
					<button
						onClick={() => {
							navigate("/movies");
							scrollTo(0, 0);
						}}
						className="px-10 py-3 text-sm bg-primary hover:bg-primary-dull transition rounded-md font-medium cursor-pointer"
					>
						Show more
					</button>
				</div>
			</div>
		</>
	);
};

export default FeatureSection;
