
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
      'Brigham and Women''s Hospital',
      '15 Francis St
Boston, MA 02115',
      'Boston',
      'MA',
      'Please contact coviddonations@partners.org to coordinate donation. 15 Francis Street entrance is open from 6am to 8pm.
When this entrance is closed, use the 75 Francis Street entrance. Drop off in main lobby. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx',
      'Unknown',
      '42.3350677',
      '-71.1046518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Women''s Hospital'
        AND o.latitude = '42.3350677'
        AND o.longitude = '-71.1046518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Women''s Hospital'
        AND o.latitude = '42.3350677'
        AND o.longitude = '-71.1046518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Women''s Hospital'
        AND o.latitude = '42.3350677'
        AND o.longitude = '-71.1046518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Women''s Hospital'
        AND o.latitude = '42.3350677'
        AND o.longitude = '-71.1046518'));

COMMIT;
