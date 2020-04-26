
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
      'Methodist Hospital',
      '3251 Louisiana Ave S APT 122
St Louis Park, MN 55426',
      'St. Louis Park',
      'MN',
      'St. Louis Park',
      'No',
      '44.9422543',
      '-93.3697365'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9422543'
        AND o.longitude = '-93.3697365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9422543'
        AND o.longitude = '-93.3697365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9422543'
        AND o.longitude = '-93.3697365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9422543'
        AND o.longitude = '-93.3697365'));

COMMIT;
