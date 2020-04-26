
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
      'Alta Bates Summit Medical Center Oakland Campus ',
      '350 Hawthorne Ave
Oakland, CA 94609',
      'Oakland',
      'CA',
      'ED Dropbox

or

Curbside/Lobby',
      'Yes',
      '37.821677',
      '-122.2630846'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center Oakland Campus '
        AND o.latitude = '37.821677'
        AND o.longitude = '-122.2630846'));

COMMIT;
