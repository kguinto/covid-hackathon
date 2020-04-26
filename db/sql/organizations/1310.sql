
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
      'Reedsburg Area Ambulance Service',
      '230 Railroad St
Reedsburg, WI 53959',
      'Reedsburg',
      'WI',
      '230 Railroad Street',
      'Yes',
      '43.5298585',
      '-90.0068855'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reedsburg Area Ambulance Service'
        AND o.latitude = '43.5298585'
        AND o.longitude = '-90.0068855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reedsburg Area Ambulance Service'
        AND o.latitude = '43.5298585'
        AND o.longitude = '-90.0068855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reedsburg Area Ambulance Service'
        AND o.latitude = '43.5298585'
        AND o.longitude = '-90.0068855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reedsburg Area Ambulance Service'
        AND o.latitude = '43.5298585'
        AND o.longitude = '-90.0068855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reedsburg Area Ambulance Service'
        AND o.latitude = '43.5298585'
        AND o.longitude = '-90.0068855'));

COMMIT;
