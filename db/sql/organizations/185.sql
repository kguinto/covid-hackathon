
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
      'Sequoia Hospital - Redwood City',
      '170 Alameda de las Pulgas
Redwood City, CA 94062',
      'Redwood City',
      'CA',
      'Please contact the Sequoia Hospital Foundation at 650-367-5657 for more information or drop off items at hospital entrance.',
      '',
      '37.479843',
      '-122.2546654'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfectant Wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand Sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('8511 Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Kleenex',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Coveralls',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sewn masks in this pattern: https://drive.google.com/file/d/1EwHrnspVWh1Z30P7VkqiIQtXhPhqmRNT/view?usp=sharing',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Hospital - Redwood City'
        AND o.latitude = '37.479843'
        AND o.longitude = '-122.2546654'));

COMMIT;
