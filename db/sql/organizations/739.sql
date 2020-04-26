
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
      'Hospital Internists of Texas',
      '7000 North Mopac Expressway
Austin, TX 78731',
      'Austin',
      'TX',
      'There is a dropoff box in the lobby on the Mopac service drive side of Plaza 7000 building. Don''t park in a spot - just pull into the dropoff circle and the box is inside the door. If you have donation too large for the box there is instructions who to call.',
      'Yes',
      '30.3531292',
      '-97.749542'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital Internists of Texas'
        AND o.latitude = '30.3531292'
        AND o.longitude = '-97.749542'));

COMMIT;
