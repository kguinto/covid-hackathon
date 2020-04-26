
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
      'Associates in Women''s Healthcare',
      '5 Medical Plaza Dr #250
Roseville, CA 95661',
      'Roseville',
      'CA',
      'Can do curbside pickup or mail',
      'Yes',
      '38.7664323',
      '-121.2467686'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Associates in Women''s Healthcare'
        AND o.latitude = '38.7664323'
        AND o.longitude = '-121.2467686'));

COMMIT;
