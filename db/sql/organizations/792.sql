
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
      'KidMed Pediatric Urgent Care',
      '8356 Bell Creek Rd. 
Mechanicsville, VA 23116',
      'Mechanicsville',
      'VA',
      'Attn: Noelle Edwards',
      'Yes',
      '37.6372231',
      '-77.3551887'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'KidMed Pediatric Urgent Care'
        AND o.latitude = '37.6372231'
        AND o.longitude = '-77.3551887'));

COMMIT;
