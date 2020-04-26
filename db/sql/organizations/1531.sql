
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
      'Excel Urgent Care of NJ - Chester',
      '2 North Rd
Chester, NJ 07930',
      'Chester',
      'NJ',
      '',
      'Yes',
      '40.7887847',
      '-74.6807187'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Chester'
        AND o.latitude = '40.7887847'
        AND o.longitude = '-74.6807187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Chester'
        AND o.latitude = '40.7887847'
        AND o.longitude = '-74.6807187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Chester'
        AND o.latitude = '40.7887847'
        AND o.longitude = '-74.6807187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Chester'
        AND o.latitude = '40.7887847'
        AND o.longitude = '-74.6807187'));

COMMIT;
