
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
      'Oak Grove Care Center',
      '1822 Park Ave # 1
Minneapolis, MN 55404',
      'Minneapolis',
      'MN',
      '',
      'Unsure',
      '44.9642989',
      '-93.265598'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oak Grove Care Center'
        AND o.latitude = '44.9642989'
        AND o.longitude = '-93.265598'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oak Grove Care Center'
        AND o.latitude = '44.9642989'
        AND o.longitude = '-93.265598'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oak Grove Care Center'
        AND o.latitude = '44.9642989'
        AND o.longitude = '-93.265598'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('eye guards',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oak Grove Care Center'
        AND o.latitude = '44.9642989'
        AND o.longitude = '-93.265598'));

COMMIT;
