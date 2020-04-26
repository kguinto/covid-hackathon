
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
      'Chester Pediatrics',
      '4704 Buckingham Ct.
Chester, VA 23831',
      'Chester',
      'VA',
      'Mailing address',
      '',
      '37.3522142',
      '-77.4518658'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chester Pediatrics'
        AND o.latitude = '37.3522142'
        AND o.longitude = '-77.4518658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chester Pediatrics'
        AND o.latitude = '37.3522142'
        AND o.longitude = '-77.4518658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chester Pediatrics'
        AND o.latitude = '37.3522142'
        AND o.longitude = '-77.4518658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chester Pediatrics'
        AND o.latitude = '37.3522142'
        AND o.longitude = '-77.4518658'));

COMMIT;
