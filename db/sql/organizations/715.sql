
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
      'Children''s Minnesota',
      '2525 Chicago Ave
 Minneapolis, MN 55404',
      'Minneapolis',
      'MN',
      'Suite 120 - entrance on Chicago Ave',
      'Yes',
      '44.956335',
      '-93.262145'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Minnesota'
        AND o.latitude = '44.956335'
        AND o.longitude = '-93.262145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Minnesota'
        AND o.latitude = '44.956335'
        AND o.longitude = '-93.262145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Minnesota'
        AND o.latitude = '44.956335'
        AND o.longitude = '-93.262145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Minnesota'
        AND o.latitude = '44.956335'
        AND o.longitude = '-93.262145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Minnesota'
        AND o.latitude = '44.956335'
        AND o.longitude = '-93.262145'));

COMMIT;
