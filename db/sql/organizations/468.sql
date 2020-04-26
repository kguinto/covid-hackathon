
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
      'AFC Urgent Care',
      '510 E Gay St
West Chester, PA 19380',
      'West Chester',
      'PA',
      '',
      '',
      '39.9638181',
      '-75.5971437'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '39.9638181'
        AND o.longitude = '-75.5971437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '39.9638181'
        AND o.longitude = '-75.5971437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '39.9638181'
        AND o.longitude = '-75.5971437'));

COMMIT;
