import 'package:weather_app/backbone/factory.dart';
import 'package:weather_app/data/model/weather_hourly_forecast.dart';
import 'package:weather_app/domain/entity/weather/hourly_forecast.dart';
import 'package:weather_app/domain/entity/weather/weather_states.dart';

class WeatherHourlyForecastFromDtoFactory
    implements Factory<WeatherHourlyForecast, WeatherHourlyForecastDto> {
  @override
  WeatherHourlyForecast create(WeatherHourlyForecastDto dto) {
    return WeatherHourlyForecast(
        DateTime.fromMillisecondsSinceEpoch(dto.timeStamp * 1000),
        dto.temp,
        dto.feelsLike,
        _weatherStateFromString(dto.weatherState),
        dto.pressure,
        dto.humidity,
        dto.windSpeed,
        dto.weatherDescription);
  }

  WeatherState _weatherStateFromString(String string) {
    switch (string) {
      case 'Rain':
        return WeatherState.Rain;
        break;
      case 'Thunderstorm':
        return WeatherState.Thunderstorm;
        break;
      case 'Drizzle':
        return WeatherState.Drizzle;
        break;
      case 'Snow':
        return WeatherState.Snow;
        break;
      case 'Clear':
        return WeatherState.Clear;
        break;
      case 'Clouds':
        return WeatherState.Clouds;
        break;
      case 'Mist':
        return WeatherState.Mist;
        break;
      case 'Sand':
        return WeatherState.Sand;
        break;
      case 'Dust':
        return WeatherState.Dust;
        break;
      case 'Ash':
        return WeatherState.Ash;
        break;
      case 'Fog':
        return WeatherState.Fog;
        break;
      case 'Haze':
        return WeatherState.Haze;
        break;
      case 'Smoke':
        return WeatherState.Smoke;
        break;
      case 'Squall':
        return WeatherState.Squall;
        break;
      case 'Tornado':
        return WeatherState.Tornado;
        break;
      default:
        return WeatherState.Clear;
        break;
    }
  }
}
