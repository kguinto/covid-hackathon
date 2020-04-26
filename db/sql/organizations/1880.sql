
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
      'University of Arizona Emergency Medicine Doctors-Tucson',
      '1625 N Campbell Ave
Tucson, AZ 85719',
      'Tucson',
      'AZ',
      'Please drop off at the Emergency Department entrance. Please inform the Emergency Department staff of your donation.',
      'Yes',
      '32.2430048',
      '-110.9462188'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Arizona Emergency Medicine Doctors-Tucson'
        AND o.latitude = '32.2430048'
        AND o.longitude = '-110.9462188'));

COMMIT;
