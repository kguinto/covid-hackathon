
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
      'Miramont Pointe',
      '11520 SE Sunnyside Rd
Clackamas, OR 97015',
      'Portland',
      'OR',
      'leave at front door',
      'Yes',
      '45.4311381',
      '-122.5455571'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Miramont Pointe'
        AND o.latitude = '45.4311381'
        AND o.longitude = '-122.5455571'));

COMMIT;
