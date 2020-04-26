
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Paratech Ambulance Service',
      '6471 N Industrial Rd
Milwaukee, WI 53223',
      'Milwaukee',
      'WI',
      'Donations can be dropped off Monday through Friday from 8am to 4 pm.  Please call 414-358-2040 if you have questions.',
      'Yes',
      '43.1351604',
      '-87.9916182'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paratech Ambulance Service'
        AND o.latitude = '43.1351604'
        AND o.longitude = '-87.9916182'));

COMMIT;
