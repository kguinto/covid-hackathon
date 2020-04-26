
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
      'Temple University Health System',
      'TUH Admin Suite
3401 North Broad St.
Philadelphia, PA 19140',
      'Philadelphia',
      'PA',
      'ATTN: David Fleece',
      'Yes',
      '40.0050435',
      '-75.1507582'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Health System'
        AND o.latitude = '40.0050435'
        AND o.longitude = '-75.1507582'));

COMMIT;
