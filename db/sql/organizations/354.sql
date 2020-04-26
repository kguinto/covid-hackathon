
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
      'Hospice by the Bay',
      '17 E. Sir Francis Drake Blvd
Larkspur, CA 94939',
      'Larkspur',
      'CA',
      'Donations can be mailed or dropped off Monday ­– Friday, 8:30 a.m. to 5 p.m.

Hospice by the Bay
Attention: PPE Donation |

If you are dropping off donations, please knock or use the intercom. A staff member will come out to accept your donation.
If you have an unusually large donation please call (415) 927.2273.',
      'Yes',
      '37.9451918',
      '-122.5127867'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice by the Bay'
        AND o.latitude = '37.9451918'
        AND o.longitude = '-122.5127867'));

COMMIT;
