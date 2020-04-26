
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
      'Lancaster Health Center',
      '304 N Water St
Lancaster, PA 17603',
      'Lancaster',
      'PA',
      'Email james.reichenbach@lanchc.org to arrange curbside handoff',
      'Yes',
      '40.0428672',
      '-76.3095638'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lancaster Health Center'
        AND o.latitude = '40.0428672'
        AND o.longitude = '-76.3095638'));

COMMIT;
