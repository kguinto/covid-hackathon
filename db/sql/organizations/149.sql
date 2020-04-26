
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
      'Temple University Hospital',
      '3401 N Broad St
Philadelphia, PA 19140',
      'Philadelphia',
      'PA',
      'ATTN: Emergency department - Nancy Politarhos

|

ATTN: TUH Admin Suite - David Fleece',
      'Yes',
      '40.0054237',
      '-75.1507198'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Hospital'
        AND o.latitude = '40.0054237'
        AND o.longitude = '-75.1507198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Hospital'
        AND o.latitude = '40.0054237'
        AND o.longitude = '-75.1507198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Hospital'
        AND o.latitude = '40.0054237'
        AND o.longitude = '-75.1507198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Hospital'
        AND o.latitude = '40.0054237'
        AND o.longitude = '-75.1507198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temple University Hospital'
        AND o.latitude = '40.0054237'
        AND o.longitude = '-75.1507198'));

COMMIT;
