
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
      'Alhambra Hospital Medical Center',
      '100 S Raymond Ave
Alhambra, CA 91801',
      'Alhambra',
      'CA',
      'Attn: Emergency Department',
      '',
      '34.0903051',
      '-118.1440538'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alhambra Hospital Medical Center'
        AND o.latitude = '34.0903051'
        AND o.longitude = '-118.1440538'));

COMMIT;
