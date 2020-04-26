
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
      'Ambulance Inc of Laurel County',
      '420 W 5th St
London, KY 40741',
      'London',
      'KY',
      '',
      'Yes',
      '37.1271996',
      '-84.0861875'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ambulance Inc of Laurel County'
        AND o.latitude = '37.1271996'
        AND o.longitude = '-84.0861875'));

COMMIT;
