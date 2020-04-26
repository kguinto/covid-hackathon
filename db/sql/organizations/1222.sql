
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
      'One Medical',
      'Two Embarcadero Center
2 Embarcadero Center, San Francisco, CA 94111',
      'San Francisco',
      'CA',
      'At Front Desk Open M-F 8am-6pm',
      'Yes',
      '37.7947881',
      '-122.3984101'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7947881'
        AND o.longitude = '-122.3984101'));

COMMIT;
