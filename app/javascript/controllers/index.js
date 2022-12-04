// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CreateVehicleController from "./create_vehicle_controller"
application.register("create-vehicle", CreateVehicleController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import TooltipController from "./tooltip_controller"
application.register("tooltip", TooltipController)
