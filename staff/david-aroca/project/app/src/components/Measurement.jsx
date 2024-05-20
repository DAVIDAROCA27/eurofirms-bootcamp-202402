import { useState } from "react";
import logic from "../logic";

function Measurement({ measurement, onMeasurementRemoved, onMeasurementModified }) {
    const [modify, setModify] = useState(false);

    const handleRemoveMeasurement = () => {
        try {
            if (confirm('delete measure?'))
                logic.removeMeasurement(measurement.id)
                    .then(() => onMeasurementRemoved())
                    .catch(error => {
                        console.error(error);
                        alert(error.message);
                    });
        } catch (error) {
            console.error(error);
            alert(error.message);
        }
    };

    const handleModifyMeasurement = () => setModify(true);

    const handleModifySubmit = event => {
        event.preventDefault();

        const form = event.target;

        const date = form.date.value;
        const weight = form.weight.value;
        const torso = form.torso.value;
        const legs = form.legs.value;

        try {
            logic.modifyMeasurement(measurement.id, date, weight, torso, legs)
                .then(() => {
                    onMeasurementModified();
                    setModify(false);
                })
                .catch(error => {
                    console.error(error);
                    alert(error.message);
                });
        } catch (error) {
            console.error(error);
            alert(error.message);
        }
    };

    return (
        <div className="border border-gray-300 rounded-md p-4 mb-4">
            {measurement ? (
                modify ? (
                    <form onSubmit={handleModifyMeasurement}>
                        <div className="mb-4">
                            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="date">
                                Date
                            </label>
                            <input
                                type="date"
                                id="date"
                                name="date"
                                defaultValue={measurement.date}
                                className="border border-gray-300 rounded-md px-4 py-2 w-full"
                                required
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="weight">
                                Weight in KG
                            </label>
                            <input
                                type="number"
                                id="weight"
                                name="weight"
                                defaultValue={measurement.weight}
                                className="border border-gray-300 rounded-md px-4 py-2 w-full"
                                required
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="torso">
                                Torso in cm
                            </label>
                            <input
                                type="number"
                                id="torso"
                                name="torso"
                                defaultValue={measurement.torso}
                                className="border border-gray-300 rounded-md px-4 py-2 w-full"
                                required
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="legs">
                                Legs in cm
                            </label>
                            <input
                                type="number"
                                id="legs"
                                name="legs"
                                defaultValue={measurement.legs}
                                className="border border-gray-300 rounded-md px-4 py-2 w-full"
                                required
                            />
                        </div>
                        <div className="flex justify-between">
                            <button
                                type="button"
                                className="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                                onClick={() => setModify(false)}
                            >
                                Cancel
                            </button>
                            <button
                                type="submit"
                                className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                            >
                                Save Changes
                            </button>
                        </div>
                    </form>
                ) : (
                    <div>
                        {/* Información de la medida */}
                    </div>
                )
            ) : (
                <p>No measurement data available</p>
            )}
        </div>
    );
}

export default Measurement;
