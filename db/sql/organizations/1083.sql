
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
      'Vasona Creek Healthcare Center',
      '16412 Los Gatos Blvd
Los Gatos, CA 95032',
      'Los Gatos',
      'CA',
      '',
      'Yes',
      '37.2302961',
      '-121.9649966'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vasona Creek Healthcare Center'
        AND o.latitude = '37.2302961'
        AND o.longitude = '-121.9649966'));

COMMIT;
