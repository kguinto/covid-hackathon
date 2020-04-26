
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
      'South Shore Women''s Health Care',
      '2690 S Cleveland Ave
St Joseph, MI 49085',
      'St Joseph',
      'MI',
      'Attn: Carol, right side porch door',
      'Yes',
      '42.0695679',
      '-86.4967724'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Women''s Health Care'
        AND o.latitude = '42.0695679'
        AND o.longitude = '-86.4967724'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Women''s Health Care'
        AND o.latitude = '42.0695679'
        AND o.longitude = '-86.4967724'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Women''s Health Care'
        AND o.latitude = '42.0695679'
        AND o.longitude = '-86.4967724'));

COMMIT;
