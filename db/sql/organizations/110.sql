
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
      'Massachusetts General Hospital ',
      '
255 Charles St.
Boston, MA 02114',
      'Boston',
      'MA',
      'Drop-off:  Lunder Loading Dock, Attn: ED |

Or mail to:
Dr. Kathy May Tran
55 Fruit St
Blake 1500 Hospital Medicine Unit Command Center
Massachusetts General Hospital 
Boston, MA 02114 |

Please contact coviddonations@partners.org to coordinate donation. See 
https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx',
      '',
      '42.36333',
      '-71.0698799'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Massachusetts General Hospital '
        AND o.latitude = '42.36333'
        AND o.longitude = '-71.0698799'));

COMMIT;
