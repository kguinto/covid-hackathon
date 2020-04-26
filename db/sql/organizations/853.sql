
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
      'Ali''i Health Center',
      '78-6831 Alii Dr #418
Kailua-Kona, HI 96740',
      'Kailua-Kona',
      'HI',
      '78-6831 Alii Drive Suite 418',
      'No',
      '19.5717098',
      '-155.9623497'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ali''i Health Center'
        AND o.latitude = '19.5717098'
        AND o.longitude = '-155.9623497'));

COMMIT;
