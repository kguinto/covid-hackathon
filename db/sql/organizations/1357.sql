
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
      'Arbor Rehabilitation & Nursing Center',
      '900 N Church St
Lodi, CA 95240',
      'Lodi',
      'CA',
      'Drop Off Outside Front Door or Mail to above address',
      'Yes',
      '38.1445346',
      '-121.2734555'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Rehabilitation & Nursing Center'
        AND o.latitude = '38.1445346'
        AND o.longitude = '-121.2734555'));

COMMIT;
