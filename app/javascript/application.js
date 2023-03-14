// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

import { audioRecord } from "./components/audio_record";
import { select2 } from "./components/select2";

audioRecord()
select2()
