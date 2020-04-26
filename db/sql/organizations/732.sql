
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
      'One World Center for Autism and One World Pediatrics',
      '7401 Forbes Blvd A
Lanham, MD 20706',
      'Lanham',
      'MD',
      '7401 Forbes Blvd Suite A',
      'Yes',
      '38.9912217',
      '-76.8268062'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One World Center for Autism and One World Pediatrics'
        AND o.latitude = '38.9912217'
        AND o.longitude = '-76.8268062'));

COMMIT;
