<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="grid grid-cols-1 md:grid-cols-3 gap-2 p-5">
    <c:forEach items="${sessionScope.offices}" var="office">
        <div class="card bg-base-500 shadow-xl">
            <div class="card-body">
                <h2 class="card-title">OFFICE #${office.id}</h2>
                <p>CITY: ${office.city}</p>
                <p>PHONE: ${office.phone}</p>
                <p>STATE: ${office.state}</p>
                <p>COUNTRY: ${office.country}</p>
                <p>POSTAL CODE: ${office.postalCode}</p>
                <div class="card-actions justify-end">
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
    </c:forEach>
</section>
