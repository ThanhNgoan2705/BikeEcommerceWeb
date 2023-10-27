<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div class="col-md-6">
    <select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm">
        <option value="" selected>Chọn tỉnh thành</option>
    </select>

    <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
        <option value="" selected>Chọn quận huyện</option>
    </select>

    <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
        <option value="" selected>Chọn phường xã</option>
    </select>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
<script>
    var citis = document.getElementById("city");
    var districts = document.getElementById("district");
    var wards = document.getElementById("ward");
    var Parameter = {
        url: "data/vietnam.json",
        method: "GET",
        responseType: "application/json",
    };
    var promise = axios(Parameter);
    promise.then(function (result) {
        renderCity(result.data);
    });

    function renderCity(data) {
        for (const x of data) {
            citis.options[citis.options.length] = new Option(x.Name, x.Id);
            console.log(x.Name);
        }
        citis.onchange = function () {
            districts.length = 1;
            wards.length = 1;
            if(this.value !== ""){
                const result = data.filter(n => n.Id === this.value);

                for (const k of result[0].Districts) {
                    districts.options[districts.options.length] = new Option(k.Name, k.Id);
                    console.log(k.Name);
                }
            }
        };
        districts.onchange = function () {
            wards.length = 1;
            const dataCity = data.filter((n) => n.Id === citis.value);
            if (this.value !== "") {
                const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

                for (const w of dataWards) {
                    wards.options[wards.options.length] = new Option(w.Name, w.Id);
                    console.log(w.Name);
                }
            }
        };
    }
</script>
</body>
</html>