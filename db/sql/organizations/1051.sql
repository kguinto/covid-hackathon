
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
      'Monument Avenue Pediatrics',
      '3602 Monument Ave
Richmond, VA 23230',
      'Richmond',
      'VA',
      'If delivering in person, please knock on door during business hours (m-f 830-5, ok to mail as well)',
      'Yes',
      '37.5665462',
      '-77.4805936'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monument Avenue Pediatrics'
        AND o.latitude = '37.5665462'
        AND o.longitude = '-77.4805936'));

COMMIT;
