package com.javaweb.entity;

import org.springframework.context.annotation.Primary;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.Date;
import java.util.List;

@Entity(name = "building")
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
    private List<String> typeCode;

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
    private Integer waterfee;

    @Column(name = "electricityfee")
    private Integer electricityfee;

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
    private Date createddate;
    //    createddate datetime
    @Column(name = "modifieddate")
    private Date modifieddate;
    //    modifieddate datetime
    @Column(name = "createdby")
    private String createdby;
    //    createdby varchar(255)
    @Column(name = "modifiedby")
    private String modifiedby;
//    modifiedby varchar(255)


    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public void setNumberOfBasement(Integer numberOfBasement) {
        this.numberOfBasement = numberOfBasement;
    }

    public void setFloorArea(Integer floorArea) {
        this.floorArea = floorArea;
    }

    public void setRentPrice(Integer rentPrice) {
        this.rentPrice = rentPrice;
    }

    public void setRentPriceDescription(String rentPriceDescription) {
        this.rentPriceDescription = rentPriceDescription;
    }

    public void setTypeCode(List<String> typeCode) {
        this.typeCode = typeCode;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public void setServiceFee(Integer serviceFee) {
        this.serviceFee = serviceFee;
    }

    public void setCarFee(Integer carFee) {
        this.carFee = carFee;
    }

    public void setMotoFee(Integer motoFee) {
        this.motoFee = motoFee;
    }

    public void setOvertimeFee(Integer overtimeFee) {
        this.overtimeFee = overtimeFee;
    }

    public void setWaterfee(Integer waterfee) {
        this.waterfee = waterfee;
    }

    public void setElectricityfee(Integer electricityfee) {
        this.electricityfee = electricityfee;
    }

    public void setDeposit(Integer deposit) {
        this.deposit = deposit;
    }

    public void setPayment(Integer payment) {
        this.payment = payment;
    }

    public void setRentTime(Integer rentTime) {
        this.rentTime = rentTime;
    }

    public void setDecorationTime(Integer decorationTime) {
        this.decorationTime = decorationTime;
    }

    public void setBrokerageFee(Integer brokerageFee) {
        this.brokerageFee = brokerageFee;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }

    public void setModifieddate(Date modifieddate) {
        this.modifieddate = modifieddate;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public void setModifiedby(String modifiedby) {
        this.modifiedby = modifiedby;
    }
}
