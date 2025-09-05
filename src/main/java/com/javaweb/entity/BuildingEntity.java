package com.javaweb.entity;

import org.springframework.context.annotation.Primary;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "building")
public class BuildingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "street")
    private String street;

    @Column(name = "ward")
    private String ward;

    @Column(name = "district")
    private String district;

    @Column(name = "numberofbasement")
    private Integer numberOfBasement;

    @Column(name = "floorarea")
    private Integer floorArea;

    @Column(name = "rentprice")
    private Integer rentPrice;

    @Column(name = "rentpricedescription")
    private String rentPriceDescription;

    @Column(name = "type")
    private String typeCode;
//    private List<String> typeCode

    @Column(name = "managername")
    private String managerName;

    @Column(name = "managerphone")
    private String managerPhone;

    @Column(name = "structure")
    private String structure;

    @Column(name = "direction")
    private String direction;

    @Column(name = "level")
    private Integer level;

    @Column(name = "servicefee")
    private Integer serviceFee;

    @Column(name = "carfee")
    private Integer carFee;

    @Column(name = "motofee")
    private Integer motoFee;

    @Column(name = "overtimeFee")
    private Integer overtimeFee;

    @Column(name = "waterfee")
    private Integer waterFee;

    @Column(name = "electricityfee")
    private Integer electricityFee;

    @Column(name = "deposit")
    private Integer deposit;

    @Column(name = "payment")
    private Integer payment;

    @Column(name = "renttime")
    private Integer rentTime;

    @Column(name = "decorationtime")
    private Integer decorationTime;

    @Column(name = "brokeragefee")
    private Integer brokerageFee;

    @Column(name = "note")
    private String note;

    //    linkofbuilding varchar(255)
//    map varchar(255)
    @Column(name = "avatar")
    private String avatar;

    //    avatar varchar(255)
    @Column(name = "createddate")
    private Date createdDate;

    //    createddate datetime
    @Column(name = "modifieddate")
    private Date modifiedDate;
    //    modifieddate datetime
    @Column(name = "createdby")
    private String createdBy;
    //    createdby varchar(255)
    @Column(name = "modifiedby")
    private String modifiedBy;
//    modifiedby varchar(255)


    @ManyToMany(mappedBy = "buildingEntities")
    private List<UserEntity> userEntities = new ArrayList<UserEntity>();

    //----------------------------------------------------------------------------------------------------
    public List<UserEntity> getUserEntities() {
        return userEntities;
    }

    public void setUserEntities(List<UserEntity> userEntities) {
        this.userEntities = userEntities;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public Integer getNumberOfBasement() {
        return numberOfBasement;
    }

    public void setNumberOfBasement(Integer numberOfBasement) {
        this.numberOfBasement = numberOfBasement;
    }

    public Integer getFloorArea() {
        return floorArea;
    }

    public void setFloorArea(Integer floorArea) {
        this.floorArea = floorArea;
    }

    public Integer getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(Integer rentPrice) {
        this.rentPrice = rentPrice;
    }

    public String getRentPriceDescription() {
        return rentPriceDescription;
    }

    public void setRentPriceDescription(String rentPriceDescription) {
        this.rentPriceDescription = rentPriceDescription;
    }

//    public List<String> getTypeCode() {
//        return typeCode;
//    }
//
//    public void setTypeCode(List<String> typeCode) {
//        this.typeCode = typeCode;
//    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(Integer serviceFee) {
        this.serviceFee = serviceFee;
    }

    public Integer getCarFee() {
        return carFee;
    }

    public void setCarFee(Integer carFee) {
        this.carFee = carFee;
    }

    public Integer getMotoFee() {
        return motoFee;
    }

    public void setMotoFee(Integer motoFee) {
        this.motoFee = motoFee;
    }

    public Integer getOvertimeFee() {
        return overtimeFee;
    }

    public void setOvertimeFee(Integer overtimeFee) {
        this.overtimeFee = overtimeFee;
    }

    public Integer getWaterFee() {
        return waterFee;
    }

    public void setWaterFee(Integer waterFee) {
        this.waterFee = waterFee;
    }

    public Integer getElectricityFee() {
        return electricityFee;
    }

    public void setElectricityFee(Integer electricityFee) {
        this.electricityFee = electricityFee;
    }

    public Integer getDeposit() {
        return deposit;
    }

    public void setDeposit(Integer deposit) {
        this.deposit = deposit;
    }

    public Integer getPayment() {
        return payment;
    }

    public void setPayment(Integer payment) {
        this.payment = payment;
    }

    public Integer getRentTime() {
        return rentTime;
    }

    public void setRentTime(Integer rentTime) {
        this.rentTime = rentTime;
    }

    public Integer getDecorationTime() {
        return decorationTime;
    }

    public void setDecorationTime(Integer decorationTime) {
        this.decorationTime = decorationTime;
    }

    public Integer getBrokerageFee() {
        return brokerageFee;
    }

    public void setBrokerageFee(Integer brokerageFee) {
        this.brokerageFee = brokerageFee;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
}


//@OneToMany(fetch = FetchType.LAZY, mappedBy = "buildingEntity")
//private List<AssignmentBuildingEntity> assignmentBuildings;
//
//@OneToMany(fetch = FetchType.LAZY, mappedBy = "buildingEntity")
//private List<RentAreaEntity> rentAreas;
//
//public List<RentAreaEntity> getRentAreas() {
//    return rentAreas;
//}
//
//public void setRentAreas(List<RentAreaEntity> rentAreas) {
//    this.rentAreas = rentAreas;
//}