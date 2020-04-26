
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
      'Providence Tarzana Medical Center',
      '18321 Clark St
Tarzana, CA 91356',
      'Tarzana',
      'CA',
      '',
      'Unsure',
      '34.1710084',
      '-118.5320475'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '34.1710084'
        AND o.longitude = '-118.5320475'));

COMMIT;
