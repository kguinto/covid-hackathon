
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
      'Christianacare-GoHealth Urgent Care',
      '550 S College Ave Ste 115
Newark, DE 19713',
      'Newark',
      'DE',
      'Drop off or pick up locally',
      'unsure',
      '39.6649142',
      '-75.7537821'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christianacare-GoHealth Urgent Care'
        AND o.latitude = '39.6649142'
        AND o.longitude = '-75.7537821'));

COMMIT;
