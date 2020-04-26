
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
      'Beaumont Hospital, Dearborn ',
      '18101 Oakwood Blvd
Dearborn, MI 48124',
      'Dearborn ',
      'MI',
      'Emergency Department ',
      'No',
      '42.2901468',
      '-83.2140457'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beaumont Hospital, Dearborn '
        AND o.latitude = '42.2901468'
        AND o.longitude = '-83.2140457'));

COMMIT;
