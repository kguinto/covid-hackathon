
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
      'Virginia Pediatric and Adolescent Medicine. PLC',
      '5275 Lee Highway, Suite 200
Arlington, Virginia 22207',
      'Arlington',
      'VA',
      'Office delivery',
      'No',
      '38.8965908',
      '-77.1348237'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Pediatric and Adolescent Medicine. PLC'
        AND o.latitude = '38.8965908'
        AND o.longitude = '-77.1348237'));

COMMIT;
