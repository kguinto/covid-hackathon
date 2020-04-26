
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
      'Tri-City Health Centers',
      '40910 Fremont Blvd
Fremont, CA 94538',
      'Fremont',
      'CA',
      'Drop upstairs in administrative offices',
      'Yes',
      '37.5342363',
      '-121.9604199'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Centers'
        AND o.latitude = '37.5342363'
        AND o.longitude = '-121.9604199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Centers'
        AND o.latitude = '37.5342363'
        AND o.longitude = '-121.9604199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Centers'
        AND o.latitude = '37.5342363'
        AND o.longitude = '-121.9604199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Centers'
        AND o.latitude = '37.5342363'
        AND o.longitude = '-121.9604199'));

COMMIT;
