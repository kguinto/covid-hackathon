
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
      'Western Loudoun Pediatrics',
      '201 N Maple Ave #201
Purcellville, VA 20132',
      'Purcellville',
      'VA',
      'In clinic or by internal front door',
      'Yes',
      '39.1383761',
      '-77.7059493'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Loudoun Pediatrics'
        AND o.latitude = '39.1383761'
        AND o.longitude = '-77.7059493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Loudoun Pediatrics'
        AND o.latitude = '39.1383761'
        AND o.longitude = '-77.7059493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Loudoun Pediatrics'
        AND o.latitude = '39.1383761'
        AND o.longitude = '-77.7059493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Loudoun Pediatrics'
        AND o.latitude = '39.1383761'
        AND o.longitude = '-77.7059493'));

COMMIT;
