
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
      'Kaiser Permanente - Panorama City',
      '13652 Willard St 
Panorama City, CA 91402',
      'Panorama City',
      'CA',
      'Attn: Anesthesia Dept Robert Lineses',
      'Yes',
      '34.2174157',
      '-118.4297275'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Panorama City'
        AND o.latitude = '34.2174157'
        AND o.longitude = '-118.4297275'));

COMMIT;
