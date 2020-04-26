
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
      'The Children''s Hospital at OU Medicine',
      '1200 Children''s Ave
Oklahoma City, OK 73104',
      'Oklahoma City',
      'OK',
      '',
      'Unsure',
      '35.4812917',
      '-97.4977382'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Hospital at OU Medicine'
        AND o.latitude = '35.4812917'
        AND o.longitude = '-97.4977382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Hospital at OU Medicine'
        AND o.latitude = '35.4812917'
        AND o.longitude = '-97.4977382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Hospital at OU Medicine'
        AND o.latitude = '35.4812917'
        AND o.longitude = '-97.4977382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Hospital at OU Medicine'
        AND o.latitude = '35.4812917'
        AND o.longitude = '-97.4977382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('yellow gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Hospital at OU Medicine'
        AND o.latitude = '35.4812917'
        AND o.longitude = '-97.4977382'));

COMMIT;
