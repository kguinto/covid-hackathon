
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
      'Excel Urgent Care of NJ - Iselin',
      '740 US-1 #2
Iselin, NJ 08830',
      'Iselin',
      'NJ',
      '',
      'Yes',
      '40.5617695',
      '-74.3001795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Iselin'
        AND o.latitude = '40.5617695'
        AND o.longitude = '-74.3001795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Iselin'
        AND o.latitude = '40.5617695'
        AND o.longitude = '-74.3001795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Iselin'
        AND o.latitude = '40.5617695'
        AND o.longitude = '-74.3001795'));

COMMIT;
