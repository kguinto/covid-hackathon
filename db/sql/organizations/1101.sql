
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
      'The Lodge at Bear Creek',
      '3729 Ira E Woods Ave
Grapevine, TX 76051',
      'Grapevine',
      'TX',
      'Please call to coordinate dropping it off in the parking lot- 817-527-7500',
      'We''ll take it if it''s unused!',
      '32.9132796',
      '-97.1282402'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Lodge at Bear Creek'
        AND o.latitude = '32.9132796'
        AND o.longitude = '-97.1282402'));

COMMIT;
