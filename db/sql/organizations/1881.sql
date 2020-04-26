
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
      'University of Arizona Emergency Medicine Doctors-South',
      '2800 E Ajo Way
Tucson, AZ 85714',
      'Tucson',
      'AZ',
      'Please drop off at the Emergency Department. Please inform staff of your donation, and they will collect it.',
      'Yes',
      '32.1763145',
      '-110.9306077'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-South'
        AND o.latitude = '32.1763145'
        AND o.longitude = '-110.9306077'));

COMMIT;
