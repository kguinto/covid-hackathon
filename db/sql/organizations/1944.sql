
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
      'The Allergy Center, PA',
      '2395 Hemby Ln
Greenville, NC 27834',
      'Greenville ',
      'NC',
      '2395 Hemby Ln Greenville NC 27834',
      'Yes',
      '35.6024853',
      '-77.4084085'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Allergy Center, PA'
        AND o.latitude = '35.6024853'
        AND o.longitude = '-77.4084085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Allergy Center, PA'
        AND o.latitude = '35.6024853'
        AND o.longitude = '-77.4084085'));

COMMIT;
