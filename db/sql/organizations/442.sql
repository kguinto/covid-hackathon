
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
      'Marin Family Medicine',
      '618 Maco Dr
Harlingen, TX 78550',
      'Harlingen',
      'TX',
      'Any',
      'Yes',
      '26.1626879',
      '-97.6769609'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marin Family Medicine'
        AND o.latitude = '26.1626879'
        AND o.longitude = '-97.6769609'));

COMMIT;
