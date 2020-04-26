
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
      'Trios Hospital',
      '4889 S Morain St
Kennewick, WA 99337',
      'KENNEWICK',
      'WA',
      '4889 S Morain St',
      'Yes',
      '46.1682337',
      '-119.1708252'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trios Hospital'
        AND o.latitude = '46.1682337'
        AND o.longitude = '-119.1708252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trios Hospital'
        AND o.latitude = '46.1682337'
        AND o.longitude = '-119.1708252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trios Hospital'
        AND o.latitude = '46.1682337'
        AND o.longitude = '-119.1708252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trios Hospital'
        AND o.latitude = '46.1682337'
        AND o.longitude = '-119.1708252'));

COMMIT;
