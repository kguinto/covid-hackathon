
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
      'Franciscan Health Indianapolis',
      '421 N Emerson Ave
Indianapolis, IN 46219',
      'Indianapolis',
      'IN',
      'Deliver curbside to 421 N Emerson Ave, Indpls 46143. Questions: email steven.daudy@franciscanalliance.org',
      'Yes',
      '39.7738921',
      '-86.082778'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Indianapolis'
        AND o.latitude = '39.7738921'
        AND o.longitude = '-86.082778'));

COMMIT;