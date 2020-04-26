
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
      'Watsonville Health Center',
      '1430 Freedom Blvd, Suite D
Watsonville, CA 95076',
      'Watsonville',
      'CA',
      'Suite D Attention: Walter Espinoza',
      'No',
      '36.9272604',
      '-121.7647447'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watsonville Health Center'
        AND o.latitude = '36.9272604'
        AND o.longitude = '-121.7647447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watsonville Health Center'
        AND o.latitude = '36.9272604'
        AND o.longitude = '-121.7647447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watsonville Health Center'
        AND o.latitude = '36.9272604'
        AND o.longitude = '-121.7647447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95 masks 1870',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watsonville Health Center'
        AND o.latitude = '36.9272604'
        AND o.longitude = '-121.7647447'));

COMMIT;
