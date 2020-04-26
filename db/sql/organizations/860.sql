
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
      'Sholom Home West',
      '3620 Phillips Pkwy
Minneapolis, MN 55426',
      'St. Louis Park',
      'MN',
      'Front desk/reception',
      'Yes',
      '44.938297',
      '-93.3952609'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home West'
        AND o.latitude = '44.938297'
        AND o.longitude = '-93.3952609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home West'
        AND o.latitude = '44.938297'
        AND o.longitude = '-93.3952609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home West'
        AND o.latitude = '44.938297'
        AND o.longitude = '-93.3952609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home West'
        AND o.latitude = '44.938297'
        AND o.longitude = '-93.3952609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home West'
        AND o.latitude = '44.938297'
        AND o.longitude = '-93.3952609'));

COMMIT;
