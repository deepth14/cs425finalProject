package edu.miu.cs.cs425.studentmgmt.Model;

import lombok.Data;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity
@NoArgsConstructor
public class Classroom {
    @Id
    @GeneratedValue
    private Integer id;
    private String buildingName;
    private String roomNumber;

    public Classroom(String buildingName, String roomNumber) {
        this.buildingName = buildingName;
        this.roomNumber = roomNumber;
    }
}

